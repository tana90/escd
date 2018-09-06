//
//  DBManager.swift
//  ESCD2018
//
//  Created by Tudor Ana on 3/25/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import Foundation

final class DBManager {
    
    
    //MARK: - Speakers
    
    static func getSpeakersTypes() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM SpeakerTypes")
    }
    
    static func getAllSpeakers() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Speakers ORDER BY firstName ASC")
    }
    
    static func getSpeakers(where type: Int) -> [DefaultDictionary] {
        let query = String(format:
            """
            SELECT DISTINCT Speakers.* FROM Speakers
            INNER JOIN SpeakerTypeMap ON Speakers.objectId = SpeakerTypeMap.speakerId
            INNER JOIN SpeakerTypes ON SpeakerTypeMap.typeId = SpeakerTypes.objectId
            WHERE SpeakerTypes.objectId = '%ld'
            ORDER BY firstName ASC
            """, type)
        return SQLiteDB.shared.query(sql: query)
    }
    
    static func getSpeaker(where id: Int) -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: String(format: "SELECT Speakers.* FROM Speakers WHERE objectId = '%ld'", id))
    }
    
    static func getSpeakersOfAbstract(where abstractId: Int) -> [DefaultDictionary] {
        
        let query = """
        SELECT * FROM Speakers
        
        LEFT JOIN AbstractsSpeakersMap ON Speakers.objectId = AbstractsSpeakersMap.speakerId
        LEFT JOIN Abstracts ON AbstractsSpeakersMap.abstractId = Abstracts.objectId
        
        WHERE Abstracts.objectId = ?
        """
        return SQLiteDB.shared.query(sql: query, parameters: [abstractId])
    }
    
    static func searchSpeakers(text query: String) -> [DefaultDictionary] {
        let query = String(format:
            """
            SELECT * FROM Speakers WHERE name LIKE '%%%@%%' OR country LIKE '%%%@%%'
            """, query)
        return SQLiteDB.shared.query(sql: query)
    }
    
    
    
    
    
    
    //MARK: - Abstracts
    
    static func getAbstractsTypes() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM AbstractsTypes")
    }
    
    static func getAllAbstracts() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Abstracts")
    }
    
    static func getAbstractsOf(_ abstractId: Int) -> [DefaultDictionary] {
        
        let query = String(format:
            """
            SELECT DISTINCT Abstracts.* FROM AbstractsSpeakersMap

            LEFT JOIN Abstracts ON Abstracts.objectId = AbstractsSpeakersMap.abstractId
            WHERE AbstractsSpeakersMap.abstractId = ?
            """ )
        return SQLiteDB.shared.query(sql: query, parameters: [abstractId])
    }
    
    static func getAbstracts(where type: Int) -> [DefaultDictionary] {
        let query = String(format:
            """
            SELECT Abstracts.* FROM Abstracts
            INNER JOIN AbstractsTypes
            ON Abstracts.type = AbstractsTypes.objectId
            WHERE AbstractsTypes.objectId = '%ld'
            """, type)
        return SQLiteDB.shared.query(sql: query)
    }
    
    static func searchAbstracts(text query: String) -> [DefaultDictionary] {
        let query = String(format:
            """
            SELECT * FROM Abstracts WHERE title LIKE '%%%@%%' OR description LIKE '%%%@%%'
            """, query)
        return SQLiteDB.shared.query(sql: query)
    }
    
    
    
    //MARK: - Sponsors
    
    static func getSponsors() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Sponsors")
    }
    
    static func getSponsorsCategories() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT category FROM Sponsors GROUP BY category ORDER BY position ASC")
    }
    
    static func getSponsors(where category: String) -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Sponsors WHERE category = ?", parameters: [category])
    }
    
    
    //MARK: - Schedule
    
    static func getScheduleTypes() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM ScheduleTypes")
    }
    
    static func getAllSections() -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Sections")
    }
    
    static func getSection(where type: Int) -> [DefaultDictionary] {
        return SQLiteDB.shared.query(sql: "SELECT * FROM Sections WHERE type = ? ORDER BY objectId ASC", parameters: [type])
    }
    
    static func getSectionBy(_ id: Int) -> DefaultDictionary? {
        let results = SQLiteDB.shared.query(sql: "SELECT * FROM Sections WHERE objectId = ?", parameters: [id])
        if results.count > 0 {
            return results[0]
        }
        return nil
    }
    
    static func getScheduleBy(_ id: Int) -> DefaultDictionary? {
        let query = """
                    SELECT DISTINCT Schedule.beginTime AS BeginTime,
                    Schedule.endTime AS EndTime,
                    Locations.name AS LocationName,
                    Schedule.name AS ScheduleName,
                    ScheduleContentTypes.name AS ScheduleType,
                    ScheduleContentTypes.color AS ScheduleColor,
                    Speakers.name AS SpeakerName,
                    Speakers.picture AS SpeakerPicture,
                    Speakers.country AS SpeakerCountry,
                    Speakers.about AS SpeakerAbout,
                    Abstracts.objectId AS AbstractId,
                    Schedule.favorite AS ScheduleFavorite,
                    Schedule.objectId AS ScheduleId,
                    Schedule.sectionId AS ScheduleSectionId

                    FROM Schedule

                    LEFT JOIN Locations ON Schedule.locationId = Locations.objectId
                    LEFT JOIN ScheduleContentTypes ON Schedule.scheduleContentType = ScheduleContentTypes.objectId
                    LEFT JOIN ScheduleAbstractMap ON Schedule.abstractId = ScheduleAbstractMap.objectId
                    LEFT JOIN Abstracts ON ScheduleAbstractMap.abstractId = Abstracts.objectId
                    LEFT JOIN AbstractsTypes ON Abstracts.type = AbstractsTypes.objectId
                    LEFT JOIN AbstractsSpeakersMap ON Abstracts.speakerId = AbstractsSpeakersMap.speakerId
                    LEFT JOIN Speakers ON AbstractsSpeakersMap.speakerId = Speakers.objectId

                    WHERE Schedule.objectId = ?
                    ORDER BY Schedule.beginTime ASC
                    """
        let results = SQLiteDB.shared.query(sql: query, parameters: [id])
        if results.count > 0 {
            return results[0]
        }
        return nil
    }
    
    static func getFavoriteSchedule() -> [DefaultDictionary] {
        let query = """
                    SELECT DISTINCT Schedule.beginTime AS BeginTime,
                    Schedule.endTime AS EndTime,
                    Locations.name AS LocationName,
                    Schedule.name AS ScheduleName,
                    ScheduleContentTypes.name AS ScheduleType,
                    ScheduleContentTypes.color AS ScheduleColor,
                    Speakers.name AS SpeakerName,
                    Speakers.picture AS SpeakerPicture,
                    Speakers.country AS SpeakerCountry,
                    Speakers.about AS SpeakerAbout,
                    Abstracts.objectId AS AbstractId,
                    Schedule.favorite AS ScheduleFavorite,
                    Schedule.objectId AS ScheduleId,
                    Schedule.sectionId AS ScheduleSectionId

                    FROM Schedule

                    LEFT JOIN Locations ON Schedule.locationId = Locations.objectId
                    LEFT JOIN ScheduleContentTypes ON Schedule.scheduleContentType = ScheduleContentTypes.objectId
                    LEFT JOIN ScheduleAbstractMap ON Schedule.abstractId = ScheduleAbstractMap.objectId
                    LEFT JOIN Abstracts ON ScheduleAbstractMap.abstractId = Abstracts.objectId
                    LEFT JOIN AbstractsTypes ON Abstracts.type = AbstractsTypes.objectId
                    LEFT JOIN AbstractsSpeakersMap ON Abstracts.speakerId = AbstractsSpeakersMap.speakerId
                    LEFT JOIN Speakers ON AbstractsSpeakersMap.speakerId = Speakers.objectId

                    WHERE ScheduleFavorite = '1'

                    ORDER BY Schedule.beginTime ASC
                    """
        return SQLiteDB.shared.query(sql: query)
    }
    
    static func getScheduleFor(section id: Int) -> [DefaultDictionary] {
        let query = """
                    SELECT DISTINCT Schedule.beginTime AS BeginTime,
                    Schedule.endTime AS EndTime,
                    Locations.name AS LocationName,
                    Schedule.name AS ScheduleName,
                    ScheduleContentTypes.name AS ScheduleType,
                    ScheduleContentTypes.color AS ScheduleColor,
                    Speakers.name AS SpeakerName,
                    Speakers.picture AS SpeakerPicture,
                    Speakers.country AS SpeakerCountry,
                    Speakers.about AS SpeakerAbout,
                    Abstracts.objectId AS AbstractId,
                    Schedule.favorite AS ScheduleFavorite,
                    Schedule.objectId AS ScheduleId,
                    Schedule.sectionId AS ScheduleSectionId

                    FROM Schedule

                    LEFT JOIN Locations ON Schedule.locationId = Locations.objectId
                    LEFT JOIN ScheduleContentTypes ON Schedule.scheduleContentType = ScheduleContentTypes.objectId
                    LEFT JOIN ScheduleAbstractMap ON Schedule.abstractId = ScheduleAbstractMap.objectId
                    LEFT JOIN Abstracts ON ScheduleAbstractMap.abstractId = Abstracts.objectId
                    LEFT JOIN AbstractsTypes ON Abstracts.type = AbstractsTypes.objectId
                    LEFT JOIN AbstractsSpeakersMap ON Abstracts.speakerId = AbstractsSpeakersMap.speakerId
                    LEFT JOIN Speakers ON AbstractsSpeakersMap.speakerId = Speakers.objectId

                    WHERE Schedule.sectionId = ?

                    ORDER BY Schedule.beginTime ASC
                    """
        return SQLiteDB.shared.query(sql: query, parameters: [id])
    }
    
    
    static func searchScheduleFor(text query: String) -> [DefaultDictionary] {
        let query = String(format: """
                    SELECT DISTINCT Schedule.beginTime AS BeginTime,
                    Schedule.endTime AS EndTime,
                    Locations.name AS LocationName,
                    Schedule.name AS ScheduleName,
                    ScheduleContentTypes.name AS ScheduleType,
                    ScheduleContentTypes.color AS ScheduleColor,
                    Speakers.name AS SpeakerName,
                    Speakers.picture AS SpeakerPicture,
                    Speakers.country AS SpeakerCountry,
                    Speakers.about AS SpeakerAbout,
                    Abstracts.objectId AS AbstractId,
                    Schedule.favorite AS ScheduleFavorite,
                    Schedule.objectId AS ScheduleId,
                    Schedule.sectionId AS ScheduleSectionId

                    FROM Schedule

                    LEFT JOIN Locations ON Schedule.locationId = Locations.objectId
                    LEFT JOIN ScheduleContentTypes ON Schedule.scheduleContentType = ScheduleContentTypes.objectId
                    LEFT JOIN ScheduleAbstractMap ON Schedule.abstractId = ScheduleAbstractMap.objectId
                    LEFT JOIN Abstracts ON ScheduleAbstractMap.abstractId = Abstracts.objectId
                    LEFT JOIN AbstractsTypes ON Abstracts.type = AbstractsTypes.objectId
                    LEFT JOIN AbstractsSpeakersMap ON Abstracts.speakerId = AbstractsSpeakersMap.speakerId
                    LEFT JOIN Speakers ON AbstractsSpeakersMap.speakerId = Speakers.objectId

                    WHERE Abstracts.title LIKE '%%%@%%' OR Abstracts.description LIKE '%%%@%%' OR Speakers.name LIKE '%%%@%%' OR ScheduleContentTypes.name LIKE '%%%@%%'

                    ORDER BY Schedule.beginTime ASC
                    """, query, query, query, query)
        return SQLiteDB.shared.query(sql: query)
    }
    
    static func markScheduleAsFavorite(where scheduleId: Int) {
        _ = SQLiteDB.shared.query(sql: "UPDATE Schedule SET Favorite = '1' WHERE objectId = ?;", parameters: [scheduleId])
    }
    
    static func unmarkScheduleAsFavorite(where scheduleId: Int) {
        
        _ = SQLiteDB.shared.query(sql: "UPDATE Schedule SET Favorite = '0' WHERE objectId = ?;", parameters: [scheduleId])
    }
    
    static func getFavoriteStatus(by scheduleId: Int) -> Bool {
        guard let result = SQLiteDB.shared.query(sql: String(format: "SELECT Favorite FROM Schedule WHERE objectId = '%ld'", scheduleId)).first,
            let value = result["Favorite"] as? Int,
            value == 1 else {
                return false
        }
        return true
    }
}

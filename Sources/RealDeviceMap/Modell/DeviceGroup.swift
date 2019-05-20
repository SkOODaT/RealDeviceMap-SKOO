//
//  DeviceGroup.swift
//  RealDeviceMap
//
//  Created by versx on 5/19/19.
//

import Foundation
import PerfectLib
import PerfectMySQL

class DeviceGroup: Hashable {
    
    public var hashValue: Int {
        return name.hashValue
    }
    
    var name: String
    var instanceName: String
    var count: UInt64
    var devices: [Device]
    
    init(name: String, instanceName: String, count: UInt64, devices: [Device]) {
        self.name = name
        self.instanceName = instanceName
        self.count = count
        self.devices = devices
    }
    
    public func create(mysql: MySQL?=nil) throws {
        /*
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[DEVICEGROUP] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            INSERT INTO instance (name, type, data)
            VALUES (?, ?, ?)
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        mysqlStmt.bindParam(count)
        mysqlStmt.bindParam(try! data.jsonEncodedString())
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[DEVICEGROUP] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }*/
    }
    
    public static func delete(mysql: MySQL?=nil, name: String) throws {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[DEVICEGROUP] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            DELETE FROM devicegroup
            WHERE name = ?
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[DEVICEGROUP] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
    }
    
    public func update(mysql: MySQL?=nil, oldName: String) throws {
        /*
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[DEVICEGROUP] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            UPDATE instance
            SET data = ?, name = ?, type = ?
            WHERE name = ?
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(try! data.jsonEncodedString())
        mysqlStmt.bindParam(name)
        mysqlStmt.bindParam(count)
        mysqlStmt.bindParam(oldName)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[DEVICEGROUP] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
 */
    }
    
    public static func getAll(mysql: MySQL?=nil) throws -> [DeviceGroup] {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[DEVICEGROUP] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let sql = """
            SELECT name, instanceName, count, data
            FROM devicegroup
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[DEVICEGROUP] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        
        var deviceGroups = [DeviceGroup]()
        while let result = results.next() {
            let name = result[0] as! String
            let instanceName = result[1] as! String
            let count = result[2] as! UInt64
            let devices = result[3] as! [Device]
            deviceGroups.append(DeviceGroup(name: name, instanceName: instanceName, count: count, devices: devices))
        }
        return deviceGroups
        
    }
    
    public static func getByName(mysql: MySQL?=nil, name: String) throws -> DeviceGroup? {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[DEVICEGROUP] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let sql = """
            SELECT type, data
            FROM devicegroup
            WHERE name = ?
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[DEVICEGROUP] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        if results.numRows == 0 {
            return nil
        }
        
        let result = results.next()!
        let instanceName = result[0] as! String
        let count = result[1] as! UInt64
        let devices = result[2] as! [Device]
        return DeviceGroup(name: name, instanceName: instanceName, count: count, devices: devices)
        
    }
    
    static func == (lhs: DeviceGroup, rhs: DeviceGroup) -> Bool {
        return lhs.name == rhs.name
    }
    
}


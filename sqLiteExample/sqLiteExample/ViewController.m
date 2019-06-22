//
//  ViewController.m
//  sqLiteExample
//
//  Created by Rahul Chopra on 17/06/17.
//  Copyright © 2017 Rahul Chopra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self createDB];
}

- (void) createDB {
    
    NSString *docsDir;
    NSArray *dirPaths;
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    
    _databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"student.db"]];
    
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    if ([fileMgr fileExistsAtPath: _databasePath] == NO)
    {
        const char *dbPath = [_databasePath UTF8String];
        
        if (sqlite3_open(dbPath, &_contactDB) == SQLITE_OK)
        {
            char *errMsg;
            const char *createSQL = "CREATE TABLE stuData (NAME TEXT, AGE TEXT, DOB TEXT, ADDRESS TEXT, PHONE TEXT, ALTER_PHONE TEXT)";
            
            if (sqlite3_exec(_contactDB, createSQL, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                NSLog(@"Table Not Created");
            }
            else
            {
                NSLog(@"Tabled Created Successfully");
            }
        }
        else
        {
            NSLog(@"Database open/create failed");
        }
        sqlite3_close(_contactDB);
    }
}

- (IBAction)btnSave:(id)sender {
    
    const char *dbPath = [_databasePath UTF8String];
    sqlite3_stmt *statement;
    
    if (sqlite3_open(dbPath, &_contactDB) == SQLITE_OK)
    {
        
        NSString *insertSQL = [NSString stringWithFormat: @"INSERT INTO stuData(name, age, dob, address, phone, alter_phone) VALUES (\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")", _txtName.text, _txtAge.text, _txtDOB.text, _txtAddress.text, _txtPhone.text, _txtAlterPhone.text];
        const char *insert_stmt = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(_contactDB, insert_stmt, -1, &statement, NULL);
        
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            NSLog(@"Contact Added");
            _txtName.text = @"";
            _txtAge.text = @"";
            _txtDOB.text = @"";
            _txtAddress.text = @"";
            _txtPhone.text = @"";
            _txtAlterPhone.text = @"";
        }
        else
        {
            NSLog(@"Contact Not Added");
            _txtName.text = @"";
            _txtAge.text = @"";
            _txtDOB.text = @"";
            _txtAddress.text = @"";
            _txtPhone.text = @"";
            _txtAlterPhone.text = @"";
        }
    }
}

- (IBAction)btnExit:(id)sender {
    
    exit(0);
}

- (IBAction)btnFind:(id)sender {
    
    const char *dbPath = [_databasePath UTF8String];
    sqlite3_stmt *statement;
    
    if (sqlite3_open(dbPath, &_contactDB) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat: @"SELECT AGE, DOB, ADDRESS, PHONE, ALTER_PHONE FROM stuData WHERE NAME = \"%@\"", _txtName.text];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(_contactDB, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *ageField = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
                _txtAge.text = ageField;
                NSString *addressField = [[NSString alloc] initWithUTF8String: (const char *)sqlite3_column_text(statement, 1)];
                _txtAddress.text = addressField;
                NSString *dobField = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 2)];
                _txtDOB.text = dobField;
                NSString *phoneField = [[NSString alloc] initWithUTF8String: (const char *)sqlite3_column_text(statement, 3)];
                _txtPhone.text = phoneField;
                NSString *alterPhoneField = [[NSString alloc] initWithUTF8String: (const char *)sqlite3_column_text(statement, 4)];
                _txtAlterPhone.text = alterPhoneField;
                
                NSLog(@"Match Found");
            }
            else
            {
                NSLog(@"Match not found");
            }
            sqlite3_finalize(statement);
        }
    }
    sqlite3_close(_contactDB);
}

- (IBAction)btnDelete:(id)sender {
    
    const char *dbPath = [_databasePath UTF8String];
    char *errMsg;
    
    if (sqlite3_open(dbPath, &_contactDB) == SQLITE_OK)
    {
        NSString *deleteSQL = [NSString stringWithFormat: @"DELETE FROM stuData WHERE name = \"%@\"", _txtName.text];
        const char *delete_stmt = [deleteSQL UTF8String];
        
        if (sqlite3_exec(_contactDB, delete_stmt, NULL, NULL, &errMsg) == SQLITE_OK)
        {
            NSLog(@"Contact deleted");
            _txtName.text = @"";
            _txtAge.text = @"";
            _txtDOB.text = @"";
            _txtAddress.text = @"";
            _txtPhone.text = @"";
            _txtAlterPhone.text = @"";
        }
        else
        {
            NSLog(@"Contact not deleted");
        }
    }
    sqlite3_close(_contactDB);
}

@end

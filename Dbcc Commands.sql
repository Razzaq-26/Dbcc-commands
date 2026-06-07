

--1. Frequently Used by DBAs
 

  DBCC CHECKDB ('AdventureWorks');         --  Check database corruption run weakly 


  EXEC sp_updatestats;                     -- Update statistics depence on the databases


  DBCC OPENTRAN;                           -- Check oldest transaction in the session


  DBCC SQLPERF(LOGSPACE);                  -- View log space usage

  
  DBCC LOGSPACE	                            -- Displays log file size and percentage used.

  
  DBCC SHRINKFILE ('LogFileNamw' , 500)     --- Shrinke the log file


  CHECKPOINT;                              -- Write the dirty pages from memory to the disk
   

  DBCC SHOW_STATISTICS 
  ('dbo.SalesOrderHeader','PK_SalesOrderHeader_SalesOrderID');    -- Show statistics



--2.   DBCC Command	                                                     Description

DBCC CHECKDB ('DatabaseName')	                   -- Checks the logical and physical integrity of the entire database.

DBCC CHECKTABLE ('TableName')	                   -- Checks integrity of a specific table and its indexes.

DBCC CHECKCATALOG ('DatabaseName')	                -- Validates metadata consistency within the database.

DBCC CHECKFILEGROUP (FileGroupName)	               -- Checks a specific filegroup for consistency.

DBCC SHOW_STATISTICS ('TableName', 'IndexName')	    -- Displays statistics information used by the query optimizer.

DBCC UPDATEUSAGE ('DatabaseName')	                -- Corrects inaccurate page and row count information.

DBCC SQLPERF(LOGSPACE)	                            -- Shows transaction log space usage for all databases.

DBCC OPENTRAN ('DatabaseName')	                    -- Displays the oldest active transaction in a database.

DBCC INPUTBUFFER (SPID)	                            -- Shows the last command executed by a session.

DBCC FREEPROCCACHE	                                -- Clears all execution plans from the plan cache.

DBCC FREESYSTEMCACHE ('ALL')	                    -- Clears cache entries from all system caches.

DBCC DROPCLEANBUFFERS	                            -- Removes clean pages from the buffer cache. Often used in performance testing.

DBCC FLUSHPROCINDB (DB_ID('DatabaseName'))          -- Clears execution plans for a specific database.

DBCC SHRINKDATABASE ('DatabaseName')	            -- Shrinks data and log files for a database.

DBCC SHRINKFILE ('LogicalFileName', TargetSize)	    -- Shrinks a specific data or log file.

DBCC TRACEON (TraceFlag, -1)	                    -- Enables a trace flag globally.

DBCC TRACEOFF (TraceFlag, -1)	                    -- Disables a trace flag globally.

DBCC TRACESTATUS (-1)	                            -- Displays the status of active trace flags.

DBCC USEROPTIONS	                                -- Shows current session settings.

DBCC MEMORYSTATUS	                                -- Displays detailed SQL Server memory usage information.

DBCC LOGINFO (deprecated)	                        -- Shows Virtual Log Files (VLFs) in the transaction log.

DBCC HELP ('CommandName')	                        -- Displays syntax help for a DBCC command.


--3.  Commands to Be Careful With

  --These can affect performance and should generally be used only for troubleshooting:

    DBCC FREEPROCCACHE;
    DBCC DROPCLEANBUFFERS;
    DBCC FREESYSTEMCACHE ('ALL');
    DBCC SHRINKDATABASE;
    DBCC SHRINKFILE;
    --etc

 
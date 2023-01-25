#!/bin/bash
cd /.build
chmod +x /backup.sh
0 3 * * * mysqldump -u root -p --all-databases > /backup/all-databases.sql
0 3 * * * find /backup/ -name "*.sql" -type f -mtime +7 -delete
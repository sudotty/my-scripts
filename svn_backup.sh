#!/bin/bash
TIMENOW=`date "+%Y%m%d%H%M%S"`
BACKFILE=/svn/back/repos1-$TIMENOW
BACKFILE2=/svn/back/svnrepos-$TIMENOW
LOGFILE=/svn/back/svnback.log
TARBACKFILE=$BACKFILE.tar.gz
TARBACKFILE2=$BACKFILE2.tar.gz
echo -e "\n\n-------------------------------------------------------------" >> $LOGFILE
echo "Begin SVN backup Repos1 at $TIMENOW...." >> $LOGFILE
#svnadmin dump /svn/repos1 > $BACKFILE 2>>$LOGFILE
echo "tar -cvzf $TARBACKFILE $BACKFILE" >> $LOGFILE
#tar -cvzf $TARBACKFILE $BACKFILE
#rm -f $BACKFILE
echo "Finish SVN backup Repos1 at $TIMENOW!" >> $LOGFILE

echo "Begin SVN backup svnrepos at $TIMENOW...." >> $LOGFILE
#svnadmin dump /svn/svnrepos > $BACKFILE2 2>>$LOGFILE
echo "tar -cvzf $TARBACKFILE2 $BACKFILE2" >> $LOGFILE
#tar -cvzf $TARBACKFILE2 $BACKFILE2
#rm -f $BACKFILE2
echo "Finish SVN backup svnrepos at $TIMENOW!" >> $LOGFILE

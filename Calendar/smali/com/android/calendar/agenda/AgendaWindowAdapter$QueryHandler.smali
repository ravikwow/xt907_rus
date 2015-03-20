.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 924
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 925
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7
    .param p1, "data"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1183
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1185
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2500(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1186
    .local v1, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1187
    .local v3, "listPositionOffset":I
    if-nez v1, :cond_1

    .line 1188
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 1197
    .restart local v1    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1198
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1199
    iput-object p2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1200
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1201
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1204
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    .line 1206
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1207
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1218
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2602(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1219
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1220
    .local v2, "info3":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1221
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    # += operator for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2612(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 1226
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2    # "info3":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3    # "listPositionOffset":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1193
    .restart local v1    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3    # "listPositionOffset":I
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1223
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1225
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 50
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 929
    move-object/from16 v26, p2

    check-cast v26, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 937
    .local v26, "data":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 941
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 942
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1174
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 948
    .local v25, "cursorSize":I
    if-gtz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 949
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v38

    .line 950
    .local v38, "listPositionOffset":I
    const/16 v39, -0x1

    .line 951
    .local v39, "newPosition":I
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-nez v3, :cond_f

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 953
    if-eqz v38, :cond_3

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaListView;->shiftSelection(I)V

    .line 980
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_5

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 982
    move-object/from16 v0, v26

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_5

    .line 983
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J
    invoke-static {v4, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J

    move-result-wide v4

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 989
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    .line 990
    const/16 v29, 0x0

    .line 991
    .local v29, "found":Z
    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 992
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 995
    const/16 v29, 0x1

    .line 1000
    :cond_7
    if-nez v29, :cond_8

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const-wide/16 v4, -0x1

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1006
    .end local v29    # "found":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 1007
    const/16 v44, 0x0

    .line 1008
    .local v44, "tempCursor":Landroid/database/Cursor;
    const/16 v45, -0x1

    .line 1011
    .local v45, "tempCursorPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 1012
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    new-instance v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;-><init>()V

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v4

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 1022
    move-object/from16 v44, p3

    .line 1028
    :cond_9
    :goto_3
    if-eqz v44, :cond_a

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    invoke-static {v3, v0, v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v27

    .line 1031
    .local v27, "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v8

    const-wide/16 v10, 0x2

    move-object/from16 v0, v27

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v27

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    invoke-static {v3, v4}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v23}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1042
    .end local v27    # "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v38    # "listPositionOffset":I
    .end local v39    # "newPosition":I
    .end local v44    # "tempCursor":Landroid/database/Cursor;
    .end local v45    # "tempCursorPosition":I
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1043
    new-instance v32, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;)V

    .line 1051
    .local v32, "headerFooterOnClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x1

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    .line 1056
    .end local v32    # "headerFooterOnClickListener":Landroid/view/View$OnClickListener;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    monitor-enter v4

    .line 1057
    const/16 v48, -0x1

    .line 1058
    .local v48, "totalAgendaRangeStart":I
    const/16 v47, -0x1

    .line 1060
    .local v47, "totalAgendaRangeEnd":I
    if-eqz v25, :cond_15

    .line 1062
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1066
    .local v49, "x":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v5, 0x0

    # setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static {v3, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1902(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1067
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_14

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # operator++ for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2008(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    .line 1073
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v48, v0

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v47, v0

    .line 1123
    .end local v49    # "x":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v48

    move/from16 v1, v47

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v3, v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1131
    .local v34, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    new-instance v46, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v46, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 1133
    .local v40, "now":J
    move-object/from16 v0, v46

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1134
    move-object/from16 v0, v46

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v40

    invoke-static {v0, v1, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v24

    .line 1135
    .local v24, "JulianToday":I
    if-eqz v34, :cond_1a

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v24

    if-gt v0, v3, :cond_1a

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .line 1138
    .local v36, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    const/16 v30, 0x0

    .line 1139
    .local v30, "foundDay":Z
    :cond_e
    :goto_7
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v30, :cond_1a

    .line 1140
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    check-cast v34, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1141
    .restart local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_8
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    move/from16 v0, v33

    if-ge v0, v3, :cond_e

    .line 1142
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v3

    move/from16 v0, v24

    if-lt v3, v0, :cond_19

    .line 1143
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->setAsFirstDayAfterYesterday(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1144
    const/16 v30, 0x1

    .line 1145
    goto :goto_7

    .line 957
    .end local v24    # "JulianToday":I
    .end local v30    # "foundDay":Z
    .end local v33    # "i":I
    .end local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v36    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .end local v40    # "now":J
    .end local v46    # "time":Landroid/text/format/Time;
    .end local v47    # "totalAgendaRangeEnd":I
    .end local v48    # "totalAgendaRangeStart":I
    .restart local v38    # "listPositionOffset":I
    .restart local v39    # "newPosition":I
    :cond_f
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 958
    .local v31, "goToTime":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    move-object/from16 v0, v31

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I
    invoke-static {v3, v0, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I

    move-result v39

    .line 960
    if-ltz v39, :cond_3

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 964
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    add-int/lit8 v4, v39, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I
    invoke-static {v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 966
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 967
    .local v7, "actualTime":Landroid/text/format/Time;
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto/16 :goto_1

    .line 1020
    .end local v7    # "actualTime":Landroid/text/format/Time;
    .end local v31    # "goToTime":Landroid/text/format/Time;
    .restart local v44    # "tempCursor":Landroid/database/Cursor;
    .restart local v45    # "tempCursorPosition":I
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1024
    :cond_12
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_9

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;

    move-result-object v44

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    move-result v45

    goto/16 :goto_3

    .line 1038
    .end local v38    # "listPositionOffset":I
    .end local v39    # "newPosition":I
    .end local v44    # "tempCursor":Landroid/database/Cursor;
    .end local v45    # "tempCursorPosition":I
    :cond_13
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 1069
    .restart local v47    # "totalAgendaRangeEnd":I
    .restart local v48    # "totalAgendaRangeStart":I
    .restart local v49    # "x":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_14
    :try_start_2
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v3, :cond_c

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # operator++ for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2108(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    goto/16 :goto_5

    .line 1168
    .end local v49    # "x":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1076
    :cond_15
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1079
    .local v43, "querySpec":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1081
    .local v28, "first":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1083
    .local v37, "last":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-gt v3, v5, :cond_16

    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-ge v3, v5, :cond_16

    .line 1084
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1087
    :cond_16
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    add-int/lit8 v5, v5, 0x1

    if-gt v3, v5, :cond_17

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v3, v5, :cond_17

    .line 1088
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, v37

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1091
    :cond_17
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v48, v0

    .line 1092
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v47, v0

    .line 1100
    .end local v28    # "first":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v37    # "last":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_9
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v3, :pswitch_data_0

    .line 1117
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # ++operator for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1904(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_d

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_6

    .line 1094
    :cond_18
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v48, v0

    .line 1095
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v47, v0

    goto :goto_9

    .line 1102
    :pswitch_0
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v48, v0

    .line 1103
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x3c

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_a

    .line 1106
    :pswitch_1
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v47, v0

    .line 1107
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x3c

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_a

    .line 1110
    :pswitch_2
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v48, v0

    .line 1111
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v47, v0

    .line 1112
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x1e

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1113
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x1e

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .line 1141
    .end local v43    # "querySpec":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .restart local v24    # "JulianToday":I
    .restart local v30    # "foundDay":Z
    .restart local v33    # "i":I
    .restart local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v36    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .restart local v40    # "now":J
    .restart local v46    # "time":Landroid/text/format/Time;
    :cond_19
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_8

    .line 1150
    .end local v30    # "foundDay":Z
    .end local v33    # "i":I
    .end local v36    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    :cond_1a
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1153
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    # getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .line 1154
    .local v35, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :goto_b
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1155
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1156
    .local v42, "queryData":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z
    invoke-static {v3, v5, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2300(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1160
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v42

    # invokes: Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2400(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 1168
    .end local v42    # "queryData":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_1c
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1150
    .end local v24    # "JulianToday":I
    .end local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v35    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .end local v40    # "now":J
    .end local v46    # "time":Landroid/text/format/Time;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 1164
    .restart local v24    # "JulianToday":I
    .restart local v34    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v35    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v40    # "now":J
    .restart local v42    # "queryData":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .restart local v46    # "time":Landroid/text/format/Time;
    :cond_1d
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    .line 1100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

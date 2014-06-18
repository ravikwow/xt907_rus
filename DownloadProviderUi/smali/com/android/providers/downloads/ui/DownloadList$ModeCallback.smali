.class Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .param p1, "downloadList"    # Lcom/android/providers/downloads/ui/DownloadList;

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 304
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 17
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 341
    const/4 v1, 0x1

    .line 368
    :goto_0
    return v1

    .line 343
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 368
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 346
    .local v12, "downloadId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # invokes: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v1, v4, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$1300(Lcom/android/providers/downloads/ui/DownloadList;J)V

    goto :goto_2

    .line 349
    .end local v12    # "downloadId":Ljava/lang/Long;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v15

    .line 350
    .local v15, "lv":Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 351
    .local v10, "checkedPositionList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 352
    .local v11, "checkedPositionListSize":I
    const/16 v16, 0x0

    .line 353
    .local v16, "sharedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v11, :cond_3

    .line 354
    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 355
    .local v3, "position":I
    const/4 v1, 0x0

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 357
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 353
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 360
    .end local v3    # "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 362
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_1

    .line 365
    .end local v10    # "checkedPositionList":Landroid/util/SparseBooleanArray;
    .end local v11    # "checkedPositionListSize":I
    .end local v13    # "i":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "lv":Landroid/widget/ListView;
    .end local v16    # "sharedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->shareDownloadedFiles()Z

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # invokes: Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 331
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 333
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 334
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 308
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v2, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 315
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v0

    .line 316
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # invokes: Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 320
    :cond_1
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 16
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v13}, Lcom/android/providers/downloads/ui/DownloadList;->isCurrentViewExpandableListView()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v13}, Lcom/android/providers/downloads/ui/DownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    .line 377
    .local v3, "ev":Landroid/widget/ExpandableListView;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    .line 378
    .local v11, "pos":J
    if-eqz p5, :cond_1

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v13

    if-nez v13, :cond_1

    .line 381
    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v0, v13}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 425
    .end local v3    # "ev":Landroid/widget/ExpandableListView;
    .end local v11    # "pos":J
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v13

    if-nez v13, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/android/providers/downloads/ui/DownloadList;->access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v2

    .line 398
    .local v2, "cursor":Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    cmp-long v13, p3, v13

    if-eqz v13, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_2

    .line 399
    const-string v13, "_id"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 401
    .local v8, "idColumnId":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 402
    .local v6, "id0":J
    cmp-long v13, p3, v6

    if-nez v13, :cond_2

    .line 403
    const-string v13, "local_filename"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 405
    .local v5, "fileNameColumnId":I
    const-string v13, "media_type"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 407
    .local v9, "mediaTypeColumnId":I
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "fileName":Ljava/lang/String;
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v13

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v15, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v15, v4, v10}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "fileNameColumnId":I
    .end local v6    # "id0":J
    .end local v8    # "idColumnId":I
    .end local v9    # "mediaTypeColumnId":I
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-gtz v13, :cond_3

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v13}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/view/ActionMode;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    # getter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v13}, Lcom/android/providers/downloads/ui/DownloadList;->access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/view/ActionMode;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ActionMode;->finish()V

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v14, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v13, v14}, Lcom/android/providers/downloads/ui/DownloadList;->access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_0

    .line 424
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    goto/16 :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

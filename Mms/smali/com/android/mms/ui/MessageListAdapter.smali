.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;,
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsGroupConversation:Z

.field private final mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "stack_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "failure_cause"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "image_resize_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "useDefaultColumnsMap"    # Z
    .param p5, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 141
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 145
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    .line 147
    if-eqz p4, :cond_0

    .line 148
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 153
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 163
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "type":Ljava/lang/String;
    const-string v3, "sms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 301
    .local v0, "boxId":I
    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 307
    :cond_1
    :goto_0
    return v2

    .line 305
    .end local v0    # "boxId":I
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 307
    .restart local v0    # "boxId":I
    if-eq v0, v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 263
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    neg-long p1, p1

    .line 266
    .end local p1    # "id":J
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 167
    instance-of v6, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "type":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 171
    .local v1, "msgId":J
    invoke-virtual {p0, v5, v1, v2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 172
    .local v3, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 174
    .local v0, "mli":Lcom/android/mms/ui/MessageListItem;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 175
    .local v4, "position":I
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    invoke-virtual {v0, v3, v6, v4}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZI)V

    .line 176
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 179
    .end local v0    # "mli":Lcom/android/mms/ui/MessageListItem;
    .end local v1    # "msgId":J
    .end local v3    # "msgItem":Lcom/android/mms/ui/MessageItem;
    .end local v4    # "position":I
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public cancelBackgroundLoading()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 202
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "c"    # Landroid/database/Cursor;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 243
    .local v7, "item":Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .local v0, "item":Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    return-object v0

    .line 247
    .end local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v7    # "item":Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 248
    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .local v6, "e":Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "MessageListAdapter"

    const-string v2, "getCachedMessageItem: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v7    # "item":Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v7

    .end local v7    # "item":Lcom/android/mms/ui/MessageItem;
    .restart local v0    # "item":Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;
    .locals 5
    .param p1, "item"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 314
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    :cond_0
    iget v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mRowIDColumn:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 318
    .local v1, "id":J
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 324
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "id":J
    :goto_0
    return-object v0

    .line 321
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "id":J
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    .end local v1    # "id":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 292
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v1

    return v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x4

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 229
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v0

    .line 230
    .local v0, "boxType":I
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    const v2, 0x7f040014

    :goto_0
    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, "view":Landroid/view/View;
    if-eq v0, v5, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 236
    :cond_1
    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_2
    return-object v1

    .line 230
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    const v2, 0x7f040015

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setIsGroupConversation(Z)V
    .locals 0
    .param p1, "isGroup"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    .line 196
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 188
    return-void
.end method

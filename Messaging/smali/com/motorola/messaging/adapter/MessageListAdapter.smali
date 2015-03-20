.class public Lcom/motorola/messaging/adapter/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mBlockChangeNotifications:Z

.field private mCommunicationHandler:Landroid/os/Handler;

.field private mContentChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCurCursorCount:I

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mListPosHandler:Landroid/os/Handler;

.field private mListPosRunnable:Ljava/lang/Runnable;

.field private final mListView:Landroid/widget/ListView;

.field private mOnDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/adapter/MessageListAdapter;->DEBUG:Z

    .line 47
    sget-boolean v0, Lcom/motorola/messaging/adapter/MessageListAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/adapter/MessageListAdapter;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "listView"    # Landroid/widget/ListView;
    .param p4, "highlight"    # Ljava/util/regex/Pattern;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    new-instance v0, Lcom/motorola/messaging/adapter/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/adapter/MessageListAdapter$1;-><init>(Lcom/motorola/messaging/adapter/MessageListAdapter;)V

    iput-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosHandler:Landroid/os/Handler;

    .line 102
    iput-object p4, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    iput-object p3, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 106
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/motorola/messaging/adapter/MessageListAdapter;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/adapter/MessageListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/adapter/MessageListAdapter;

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/adapter/MessageListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/adapter/MessageListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/adapter/MessageListAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/adapter/MessageListAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/adapter/MessageListAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/adapter/MessageListAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCommunicationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/motorola/messaging/adapter/MessageListAdapter;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isIncoming":Z
    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "msgType":Ljava/lang/String;
    const-string v4, "sms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 243
    .end local v1    # "msgType":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .restart local v1    # "msgType":Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 171
    iget-object v2, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    invoke-static {p2, p3, v2}, Lcom/motorola/messaging/composer/MessageItem;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/regex/Pattern;)Lcom/motorola/messaging/composer/MessageItem;

    move-result-object v1

    .line 173
    .local v1, "msgItem":Lcom/motorola/messaging/composer/MessageItem;
    if-eqz v1, :cond_0

    .line 174
    const v2, 0x7f09003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/MessageListItem;

    .line 175
    .local v0, "mli":Lcom/motorola/messaging/view/MessageListItem;
    iget-object v2, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCommunicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/view/MessageListItem;->setActivityHandler(Landroid/os/Handler;)V

    .line 176
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/view/MessageListItem;->bind(Lcom/motorola/messaging/composer/MessageItem;Z)V

    .line 178
    .end local v0    # "mli":Lcom/motorola/messaging/view/MessageListItem;
    :cond_0
    return-void

    .line 176
    .restart local v0    # "mli":Lcom/motorola/messaging/view/MessageListItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 214
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 216
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "msgType":Ljava/lang/String;
    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 227
    .end local v3    # "msgType":Ljava/lang/String;
    :goto_0
    return-wide v1

    .line 222
    .restart local v3    # "msgType":Ljava/lang/String;
    :cond_0
    const-wide/16 v4, -0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    mul-long v1, v4, v6

    .local v1, "id":J
    goto :goto_0

    .line 227
    .end local v1    # "id":J
    .end local v3    # "msgType":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 205
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/motorola/messaging/adapter/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v1

    return v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p2}, Lcom/motorola/messaging/adapter/MessageListAdapter;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030013

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 146
    sget-boolean v0, Lcom/motorola/messaging/adapter/MessageListAdapter;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "MessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCurCursorCount:I

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mOnDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mOnDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/motorola/messaging/adapter/MessageListAdapter;)V

    .line 167
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mListPosRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mBlockChangeNotifications:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mContentChanged:Z

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public restartAutoRequery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iput-boolean v2, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mBlockChangeNotifications:Z

    .line 125
    iget-boolean v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mContentChanged:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/provider/SqliteManager;->requery(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 127
    iput-boolean v2, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mContentChanged:Z

    .line 129
    :cond_0
    return-void
.end method

.method public setCommunicationHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "communicationHandler"    # Landroid/os/Handler;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mCommunicationHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mOnDataSetChangedListener:Lcom/motorola/messaging/adapter/MessageListAdapter$OnDataSetChangedListener;

    .line 141
    return-void
.end method

.method public stopAutoRequery()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/adapter/MessageListAdapter;->mBlockChangeNotifications:Z

    .line 133
    return-void
.end method

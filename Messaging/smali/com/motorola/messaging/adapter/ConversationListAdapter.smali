.class public Lcom/motorola/messaging/adapter/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private mBlockChangeNotifications:Z

.field private mContentChanged:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 75
    iput-object p1, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    const v3, 0x7f09002d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/view/ConversationHeaderView;

    .line 92
    .local v2, "headerView":Lcom/motorola/messaging/view/ConversationHeaderView;
    iget-object v3, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/motorola/messaging/conversation/Conversation;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/motorola/messaging/conversation/Conversation;

    move-result-object v1

    .line 93
    .local v1, "conv":Lcom/motorola/messaging/conversation/Conversation;
    new-instance v0, Lcom/motorola/messaging/conversation/ConversationHeader;

    iget-object v3, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/motorola/messaging/conversation/ConversationHeader;-><init>(Landroid/content/Context;Lcom/motorola/messaging/conversation/Conversation;)V

    .line 94
    .local v0, "ch":Lcom/motorola/messaging/conversation/ConversationHeader;
    iget-object v3, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/motorola/messaging/view/ConversationHeaderView;->bind(Landroid/content/Context;Lcom/motorola/messaging/conversation/ConversationHeader;)V

    .line 95
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/view/ConversationHeaderView;

    .line 100
    .local v0, "view":Lcom/motorola/messaging/view/ConversationHeaderView;
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mOnContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mOnContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/motorola/messaging/adapter/ConversationListAdapter;)V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mBlockChangeNotifications:Z

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContentChanged:Z

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/conversation/DraftCache;->getInstance()Lcom/motorola/messaging/conversation/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/conversation/DraftCache;->refresh()V

    .line 57
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public restartAutoRequery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mBlockChangeNotifications:Z

    .line 63
    iget-boolean v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContentChanged:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/provider/SqliteManager;->requery(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 65
    iput-boolean v2, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mContentChanged:Z

    .line 67
    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mOnContentChangedListener:Lcom/motorola/messaging/adapter/ConversationListAdapter$OnContentChangedListener;

    .line 85
    return-void
.end method

.method public stopAutoRequery()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/adapter/ConversationListAdapter;->mBlockChangeNotifications:Z

    .line 71
    return-void
.end method

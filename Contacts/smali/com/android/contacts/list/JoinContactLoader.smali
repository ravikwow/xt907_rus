.class public Lcom/android/contacts/list/JoinContactLoader;
.super Landroid/content/CursorLoader;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
    }
.end annotation


# instance fields
.field private mProjection:[Ljava/lang/String;

.field private mSuggestionUri:Landroid/net/Uri;

.field private mSuggestionsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 69
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 88
    new-instance v0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/Cursor;

    .line 100
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/JoinContactLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSuggestionUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    .line 73
    return-void
.end method

.class public Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;
.super Landroid/database/CursorWrapper;
.source "JoinContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinContactLoaderResult"
.end annotation


# instance fields
.field public final suggestionCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "baseCursor"    # Landroid/database/Cursor;
    .param p2, "suggestionCursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 50
    iput-object p2, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    throw v0
.end method

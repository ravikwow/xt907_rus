.class Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 514
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    .line 563
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V

    .line 564
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 522
    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    invoke-static {v6}, Lcom/android/contacts/SpecialCharSequenceMgr;->access$002(Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    .line 525
    :try_start_0
    iget-boolean v6, p0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 554
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    move-object v4, v0

    .line 532
    .local v4, "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v6, v4, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 535
    invoke-virtual {v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v5

    .line 540
    .local v5, "text":Landroid/widget/EditText;
    if-eqz p3, :cond_2

    if-eqz v5, :cond_2

    iget v6, v4, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    const-string v6, "name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "name":Ljava/lang/String;
    const-string v6, "number"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 548
    iget-object v6, v4, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 549
    .local v1, "context":Landroid/content/Context;
    const v6, 0x7f0b0026

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v4    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v5    # "text":Landroid/widget/EditText;
    :catchall_0
    move-exception v6

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method

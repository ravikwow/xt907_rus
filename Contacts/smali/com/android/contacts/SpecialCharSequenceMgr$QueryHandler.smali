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
    .line 437
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 438
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    .line 481
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 482
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 446
    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    invoke-static {v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->access$002(Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    .line 447
    iget-boolean v5, p0, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    if-eqz v5, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    .line 451
    check-cast v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    .line 454
    .local v3, "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v5, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 457
    invoke-virtual {v3}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v4

    .line 462
    .local v4, "text":Landroid/widget/EditText;
    if-eqz p3, :cond_0

    if-eqz v4, :cond_0

    iget v5, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    const-string v5, "name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "name":Ljava/lang/String;
    const-string v5, "number"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v7, v7, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 470
    iget-object v5, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f0c002f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.class final Lcom/android/mms/data/WorkingMessage$1;
.super Landroid/os/AsyncTask;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/mms/data/WorkingMessage$SmsInfo;",
        "Lcom/android/mms/data/WorkingMessage$MmsInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msg:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$onDraftLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .param p1, "none"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/mms/data/WorkingMessage$SmsInfo;",
            "Lcom/android/mms/data/WorkingMessage$MmsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage$SmsInfo;
    invoke-static {v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage$SmsInfo;

    move-result-object v2

    .line 444
    .local v2, "smsInfo":Lcom/android/mms/data/WorkingMessage$SmsInfo;
    const/4 v0, 0x0

    .line 445
    .local v0, "mmsInfo":Lcom/android/mms/data/WorkingMessage$MmsInfo;
    if-nez v2, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage$MmsInfo;
    invoke-static {v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$200(Landroid/content/Context;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage$MmsInfo;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;->uri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z
    invoke-static {v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 454
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/mms/data/WorkingMessage$SmsInfo;Lcom/android/mms/data/WorkingMessage$MmsInfo;>;"
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 434
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/mms/data/WorkingMessage$SmsInfo;",
            "Lcom/android/mms/data/WorkingMessage$MmsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/mms/data/WorkingMessage$SmsInfo;Lcom/android/mms/data/WorkingMessage$MmsInfo;>;"
    const/4 v1, 0x1

    .line 460
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # setter for: Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$402(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 463
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;->body:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;

    iget v0, v0, Lcom/android/mms/data/WorkingMessage$SmsInfo;->priority:I

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setPriority(I)V

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 479
    :cond_1
    return-void

    .line 466
    :cond_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 467
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    # setter for: Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$502(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 468
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;->subject:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 471
    :cond_3
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;

    iget v0, v0, Lcom/android/mms/data/WorkingMessage$MmsInfo;->priority:I

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setPriority(I)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->addSignature()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 434
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

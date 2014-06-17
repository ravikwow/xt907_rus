.class Lcom/android/mms/ui/ComposeMessageActivity$34;
.super Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addMedia(Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mResult:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$appendMedia:Z

.field final synthetic val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

.field final synthetic val$mediaData:Ljava/lang/String;

.field final synthetic val$mediaName:Ljava/lang/String;

.field final synthetic val$mediaUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;ILcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # I

    .prologue
    .line 3504
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaData:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$appendMedia:Z

    invoke-direct {p0, p2, p3}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;-><init>(Landroid/os/Handler;I)V

    .line 3506
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->mResult:I

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 6

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->getMediaType()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaData:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$appendMedia:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->setMMSAttachment(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->mResult:I

    .line 3514
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 3515
    return-void
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$mediaCallback:Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->mResult:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$AddMediaCallback;->onPostExecute(I)V

    .line 3520
    return-void
.end method

.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeImageButtonListener"
.end annotation


# instance fields
.field private final mAppend:Z

.field private final mImageUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "append"    # Z

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->mImageUri:Landroid/net/Uri;

    .line 1028
    iput-boolean p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->mAppend:Z

    .line 1029
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1033
    # getter for: Lcom/motorola/messaging/activity/ComposeMessageActivity;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const-string v0, "ComposeMsgActivity/ResizeImageButtonListener"

    const-string v1, "onClick ()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 1038
    new-instance v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->mImageUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageButtonListener;->mAppend:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/messaging/activity/ComposeMessageActivity$ResizeImageTask;-><init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const-string v1, "resize_image"

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->execute(Ljava/lang/String;)V

    .line 1039
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1040
    return-void
.end method

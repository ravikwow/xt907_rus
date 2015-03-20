.class Lcom/motorola/messaging/activity/ComposeMessageActivity$7;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->addMedia(Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;->val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;->val$mediaCallback:Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;

    invoke-virtual {v0}, Lcom/motorola/messaging/activity/ComposeMessageActivity$AddMediaCallback;->onPreExecute()V

    .line 950
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$7;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/4 v1, 0x1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->updateUIForAddingMedia(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$2000(Lcom/motorola/messaging/activity/ComposeMessageActivity;Z)V

    .line 951
    return-void
.end method

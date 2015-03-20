.class Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$53;)V
    .locals 0

    .prologue
    .line 3228
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3230
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->val$msgId_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3231
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 3232
    add-int/lit8 v0, v0, -0x1

    .line 3233
    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    iget-object v3, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    iget-object v1, v1, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->val$from_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$53$1;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$53;

    iget-object v2, v2, Lcom/motorola/messaging/activity/ComposeMessageActivity$53;->val$msgId_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x80

    invoke-static {v3, v1, v2, v4}, Lcom/motorola/messaging/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 3238
    :cond_0
    return-void
.end method

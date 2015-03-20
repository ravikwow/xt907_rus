.class Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;I)V
    .locals 0

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;

    iput p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6771
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;->this$2:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4;->this$1:Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;

    iget-object v0, v0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$ModeCallback$4$1;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6772
    return-void
.end method

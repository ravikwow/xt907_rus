.class Lcom/android/mms/ui/ComposeMessageActivity$47;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 4233
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 4237
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4238
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4239
    return-void
.end method

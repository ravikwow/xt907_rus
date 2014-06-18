.class Lcom/android/contacts/calllog/CallLogFragment$3$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment$3;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/calllog/CallLogFragment$3;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment$3;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$3$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3$1;->this$1:Lcom/android/contacts/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, -0x1

    # invokes: Lcom/android/contacts/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$200(Lcom/android/contacts/calllog/CallLogFragment;I)V

    goto :goto_0
.end method

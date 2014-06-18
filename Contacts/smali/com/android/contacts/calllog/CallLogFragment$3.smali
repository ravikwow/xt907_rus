.class Lcom/android/contacts/calllog/CallLogFragment$3;
.super Landroid/telephony/PhoneStateListener;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment;->registerPhoneCallReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 640
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$3;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    # getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/calllog/CallLogFragment$3$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/calllog/CallLogFragment$3$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

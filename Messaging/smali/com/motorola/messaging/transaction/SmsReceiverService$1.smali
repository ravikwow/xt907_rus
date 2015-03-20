.class Lcom/motorola/messaging/transaction/SmsReceiverService$1;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/transaction/SmsReceiverService;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$1;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService$1;->this$0:Lcom/motorola/messaging/transaction/SmsReceiverService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method

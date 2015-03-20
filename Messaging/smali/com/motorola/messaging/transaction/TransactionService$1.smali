.class Lcom/motorola/messaging/transaction/TransactionService$1;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionService$1;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fromAddress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "fromAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$1;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    const v3, 0x7f0b0119

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$1;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 244
    return-void
.end method

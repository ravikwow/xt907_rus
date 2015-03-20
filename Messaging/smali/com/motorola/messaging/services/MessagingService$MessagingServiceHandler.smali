.class Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;
.super Landroid/os/Handler;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/services/MessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagingServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/services/MessagingService;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/services/MessagingService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;->this$0:Lcom/motorola/messaging/services/MessagingService;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/services/MessagingService$MessagingServiceHandler;->this$0:Lcom/motorola/messaging/services/MessagingService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;

    # invokes: Lcom/motorola/messaging/services/MessagingService;->doSend(Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;)V
    invoke-static {v2, v1}, Lcom/motorola/messaging/services/MessagingService;->access$000(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MessagingService"

    const-string v2, "Messaging Service callback comunication error"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class Lcom/motorola/messaging/services/MessagingService$1;
.super Lcom/motorola/contracts/messaging/IMessagingService$Stub;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/services/MessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/services/MessagingService;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/services/MessagingService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/messaging/services/MessagingService$1;->this$0:Lcom/motorola/messaging/services/MessagingService;

    invoke-direct {p0}, Lcom/motorola/contracts/messaging/IMessagingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMessage(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I
    .locals 1
    .param p1, "message"    # Lcom/motorola/contracts/messaging/Message;
    .param p2, "callback"    # Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/motorola/messaging/services/MessagingService$1;->this$0:Lcom/motorola/messaging/services/MessagingService;

    # invokes: Lcom/motorola/messaging/services/MessagingService;->enqueueSendRequest(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I
    invoke-static {v0, p1, p2, p3}, Lcom/motorola/messaging/services/MessagingService;->access$100(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I

    move-result v0

    return v0
.end method

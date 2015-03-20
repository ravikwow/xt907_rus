.class Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;
.super Ljava/lang/Object;
.source "MessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/services/MessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageRequest"
.end annotation


# instance fields
.field public callback:Lcom/motorola/contracts/messaging/IMessagingServiceCallback;

.field public flags:I

.field public message:Lcom/motorola/contracts/messaging/Message;

.field public requestId:I

.field final synthetic this$0:Lcom/motorola/messaging/services/MessagingService;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/services/MessagingService;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;->this$0:Lcom/motorola/messaging/services/MessagingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/services/MessagingService;Lcom/motorola/messaging/services/MessagingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/services/MessagingService;
    .param p2, "x1"    # Lcom/motorola/messaging/services/MessagingService$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/motorola/messaging/services/MessagingService$SendMessageRequest;-><init>(Lcom/motorola/messaging/services/MessagingService;)V

    return-void
.end method

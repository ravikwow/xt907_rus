.class Lcom/motorola/messaging/receiver/SimStateChangedReceiver$1;
.super Ljava/lang/Object;
.source "SimStateChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/receiver/SimStateChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/receiver/SimStateChangedReceiver;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/receiver/SimStateChangedReceiver;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/messaging/receiver/SimStateChangedReceiver$1;->this$0:Lcom/motorola/messaging/receiver/SimStateChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->retrieveAPNMccMnc()V

    .line 44
    return-void
.end method

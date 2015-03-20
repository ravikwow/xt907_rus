.class public Lcom/motorola/messaging/receiver/PrivilegedSmsReceiver;
.super Lcom/motorola/messaging/receiver/SmsReceiver;
.source "PrivilegedSmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/messaging/receiver/SmsReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/messaging/receiver/SmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 34
    return-void
.end method

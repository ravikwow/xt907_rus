.class Lcom/motorola/messaging/receiver/LocaleChangedReceiver$1;
.super Ljava/lang/Object;
.source "LocaleChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/receiver/LocaleChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/receiver/LocaleChangedReceiver;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/receiver/LocaleChangedReceiver;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/motorola/messaging/receiver/LocaleChangedReceiver$1;->this$0:Lcom/motorola/messaging/receiver/LocaleChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->loadEncodingOptions()V

    .line 37
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getDefaultEncodingMethodForLanguage()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/messaging/settings/MessageSettings;->setEncodingMethod(I)V

    .line 38
    return-void
.end method

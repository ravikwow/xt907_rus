.class public Lcom/motorola/messaging/receiver/LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangedReceiver.java"


# static fields
.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/receiver/LocaleChangedReceiver;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    sget-boolean v2, Lcom/motorola/messaging/receiver/LocaleChangedReceiver;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "LocaleChangedReceiver"

    const-string v3, "LocaleChangedReceiver: language changed!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/composer/MessageItem;->onLocaleChanged(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getEncodingPreferencesEnabled()Z

    move-result v1

    .line 33
    .local v1, "showEncodingOptions":Z
    if-eqz v1, :cond_1

    .line 34
    new-instance v0, Lcom/motorola/messaging/receiver/LocaleChangedReceiver$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/receiver/LocaleChangedReceiver$1;-><init>(Lcom/motorola/messaging/receiver/LocaleChangedReceiver;)V

    .line 40
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    const-string v3, "loading_encoding_options"

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 42
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

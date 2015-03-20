.class public Lcom/motorola/messaging/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    sput-boolean v0, Lcom/motorola/messaging/MmsApp;->DEBUG:Z

    .line 50
    sget-boolean v1, Lcom/motorola/messaging/MmsApp;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/MmsApp;->LOCAL_LOG:Z

    .line 53
    invoke-static {}, Lcom/motorola/messaging/frameworkadapter/Reflection;->initReflected()V

    .line 54
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized initializeMessagingAppSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-class v1, Lcom/motorola/messaging/MmsApp;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/messaging/settings/CustomerManager;->init(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/motorola/messaging/settings/MessageSettings;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 60
    sget-boolean v0, Lcom/motorola/messaging/MmsApp;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "MmsApp"

    const-string v1, "onCreate - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/motorola/messaging/MmsApp;->initializeMessagingAppSettings(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/motorola/messaging/transaction/TransactionManager;->init(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Lcom/motorola/messaging/contact/ContactUtils;->init(Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Lcom/motorola/messaging/contact/Contact;->init(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/motorola/messaging/contact/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/motorola/messaging/conversation/DraftCache;->init(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/motorola/messaging/provider/StorageMonitor;->init(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lcom/motorola/messaging/transaction/RateController;->init(Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/motorola/messaging/model/RegionModel;->initialize(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/motorola/messaging/model/SmilModel;->cleanupDRMStorage(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lcom/motorola/messaging/composer/SmileyParser;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/motorola/messaging/transaction/DownloadManager;->init(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;->init(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/motorola/messaging/conversation/ConversationManager;->init(Landroid/content/Context;)V

    .line 82
    invoke-static {p0}, Lcom/motorola/messaging/transaction/RetryScheduler;->init(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/motorola/messaging/util/DialogBuilder;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->init(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->init(Landroid/content/Context;)V

    .line 87
    sget-boolean v0, Lcom/motorola/messaging/MmsApp;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "MmsApp"

    const-string v1, "onCreate - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    const-string v0, "MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG-STATUS - Text Messsaging app started, app version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/messaging/MmsApp;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "MmsApp"

    const-string v1, "onTerminate - START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/model/SmilModel;->cleanupDRMStorage(Landroid/content/Context;)V

    .line 103
    sget-boolean v0, Lcom/motorola/messaging/MmsApp;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "MmsApp"

    const-string v1, "onTerminate - END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method

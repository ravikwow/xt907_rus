.class public Lcom/motorola/blur/setup/TransientNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransientNotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransientNotificationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/TransientNotificationReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/TransientNotificationReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/TransientNotificationReceiver;->disableThisReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private disableThisReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 31
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "name":Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;-><init>(Lcom/motorola/blur/setup/TransientNotificationReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 28
    return-void
.end method

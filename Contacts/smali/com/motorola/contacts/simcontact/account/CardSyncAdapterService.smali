.class public Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;
.super Landroid/app/Service;
.source "CardSyncAdapterService.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sSyncAdapter:Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapter:Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapter:Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    invoke-virtual {p0}, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->mContext:Landroid/content/Context;

    .line 22
    sget-object v1, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapter:Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

    sget-object v2, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/contacts/simcontact/account/CardSyncAdapterService;->sSyncAdapter:Lcom/motorola/contacts/simcontact/account/CardSyncAdapter;

    .line 26
    :cond_0
    monitor-exit v1

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

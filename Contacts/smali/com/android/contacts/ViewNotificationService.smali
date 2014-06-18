.class public Lcom/android/contacts/ViewNotificationService;
.super Landroid/app/Service;
.source "ViewNotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUri:Landroid/net/Uri;

.field private mLoadingInProgress:Z

.field private mViewNotifications:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/ViewNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ViewNotificationService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ViewNotificationService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/ViewNotificationService;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ViewNotificationService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/ViewNotificationService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ViewNotificationService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ViewNotificationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ViewNotificationService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/ViewNotificationService;->loadContact()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/contacts/ViewNotificationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ViewNotificationService;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z

    return p1
.end method

.method private loadContact()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    new-instance v0, Lcom/android/contacts/model/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 88
    .local v0, "contactLoader":Lcom/android/contacts/model/ContactLoader;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/ViewNotificationService$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/ViewNotificationService$1;-><init>(Lcom/android/contacts/ViewNotificationService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->startLoading()V

    .line 115
    iput-boolean v3, p0, Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z

    .line 116
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 71
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    .line 73
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/ViewNotificationService;->loadContact()V

    .line 79
    :cond_1
    const/4 v1, 0x3

    return v1

    .line 63
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

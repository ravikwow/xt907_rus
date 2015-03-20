.class public Lcom/android/contacts/list/ProviderStatusLoader;
.super Landroid/database/ContentObserver;
.source "ProviderStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

.field private mProviderStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ProviderStatusLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ProviderStatusLoader;)Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusLoader;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ProviderStatusLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/ProviderStatusLoader;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    return p1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/list/ProviderStatusLoader$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ProviderStatusLoader$1;-><init>(Lcom/android/contacts/list/ProviderStatusLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

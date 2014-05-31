.class Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
.super Ljava/lang/Object;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonConfigurationInstanceState"
.end annotation


# instance fields
.field coolDownCounter:I

.field mStatusBar:Landroid/app/StatusBarManager;

.field sWidgetsToDisable:I

.field final wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "_wakelock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 138
    return-void
.end method

.class Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;
.super Ljava/lang/Object;
.source "EncryptionReceiverFirstStart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->disableReceiverAndStartPinActivity(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;->this$0:Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;

    iput-object p2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 86
    return-void
.end method

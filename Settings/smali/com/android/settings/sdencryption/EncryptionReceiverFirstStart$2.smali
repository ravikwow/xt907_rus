.class Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;
.super Ljava/lang/Object;
.source "EncryptionReceiverFirstStart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;->disableAllSDEncryptionReceivers(Landroid/content/Context;)V
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
    .line 120
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->this$0:Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;

    iput-object p2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sdencryption/EncryptionReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {v0, v1, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 128
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {v0, v1, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 131
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverFirstStart$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sdencryption/EncryptionSDCardPINReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-virtual {v0, v1, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 134
    return-void
.end method

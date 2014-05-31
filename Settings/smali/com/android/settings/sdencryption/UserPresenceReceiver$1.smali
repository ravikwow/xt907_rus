.class Lcom/android/settings/sdencryption/UserPresenceReceiver$1;
.super Ljava/lang/Object;
.source "UserPresenceReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/UserPresenceReceiver;->handleUserPresentAction(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/UserPresenceReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/UserPresenceReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/sdencryption/UserPresenceReceiver$1;->this$0:Lcom/android/settings/sdencryption/UserPresenceReceiver;

    iput-object p2, p0, Lcom/android/settings/sdencryption/UserPresenceReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Lcom/android/settings/sdencryption/UserPresenceReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/sdencryption/UserPresenceReceiver$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/android/settings/sdencryption/UserPresenceReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.sdencryption.TIMER_ALERT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/sdencryption/UserPresenceReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;
.super Landroid/os/AsyncTask;
.source "PrivacyPolicyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->dismissReminder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 232
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/blur/privacy/PrivacyReminderReceiver;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

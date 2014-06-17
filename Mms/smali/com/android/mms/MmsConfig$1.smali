.class final Lcom/android/mms/MmsConfig$1;
.super Ljava/lang/Object;
.source "MmsConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    # getter for: Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/MmsConfig;->access$100()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.contextual.location.ils.IlsShareLocation"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/android/mms/MmsConfig;->mIsLocationAppAvailable:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 220
    return-void
.end method

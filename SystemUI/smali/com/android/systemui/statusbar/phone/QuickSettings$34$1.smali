.class Lcom/android/systemui/statusbar/phone/QuickSettings$34$1;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings$34;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$34;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings$34;)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$34$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$34;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_0
    return-void

    .line 1475
    :catch_0
    move-exception v0

    goto :goto_0
.end method

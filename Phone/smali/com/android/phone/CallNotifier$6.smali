.class Lcom/android/phone/CallNotifier$6;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->showCallNotConnectedRetryDialog(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    .prologue
    .line 3210
    iput-object p1, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 3213
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mIsRedialCall:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2002(Lcom/android/phone/CallNotifier;Z)Z

    .line 3214
    iget-object v0, p0, Lcom/android/phone/CallNotifier$6;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2102(Lcom/android/phone/CallNotifier;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3215
    return-void
.end method

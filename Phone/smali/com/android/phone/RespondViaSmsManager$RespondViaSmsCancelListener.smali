.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 305
    # getter for: Lcom/android/phone/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RespondViaSmsCancelListener.onCancel()..."

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v1}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 309
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 310
    .local v0, "state":Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 313
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 336
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->restartRinger()V

    .line 334
    iget-object v1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsCancelListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    # getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/RespondViaSmsManager;->access$500(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_0
.end method

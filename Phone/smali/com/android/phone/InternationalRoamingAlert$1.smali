.class Lcom/android/phone/InternationalRoamingAlert$1;
.super Ljava/lang/Object;
.source "InternationalRoamingAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InternationalRoamingAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InternationalRoamingAlert;


# direct methods
.method constructor <init>(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/InternationalRoamingAlert$1;->this$0:Lcom/android/phone/InternationalRoamingAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert$1;->this$0:Lcom/android/phone/InternationalRoamingAlert;

    # getter for: Lcom/android/phone/InternationalRoamingAlert;->DBG:Z
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingAlert;->access$000(Lcom/android/phone/InternationalRoamingAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "mIntRoamingAlertDialog: Negative click..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert$1;->this$0:Lcom/android/phone/InternationalRoamingAlert;

    # invokes: Lcom/android/phone/InternationalRoamingAlert;->disable()V
    invoke-static {v0}, Lcom/android/phone/InternationalRoamingAlert;->access$100(Lcom/android/phone/InternationalRoamingAlert;)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert$1;->this$0:Lcom/android/phone/InternationalRoamingAlert;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    return-void
.end method

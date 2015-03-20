.class Lcom/android/batteryreport/BattTempCooldownScreen$1;
.super Ljava/lang/Object;
.source "BattTempCooldownScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/batteryreport/BattTempCooldownScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/batteryreport/BattTempCooldownScreen;


# direct methods
.method constructor <init>(Lcom/android/batteryreport/BattTempCooldownScreen;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/batteryreport/BattTempCooldownScreen$1;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/batteryreport/BattTempCooldownScreen$1;->this$0:Lcom/android/batteryreport/BattTempCooldownScreen;

    # invokes: Lcom/android/batteryreport/BattTempCooldownScreen;->takeEmergencyCallAction(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/batteryreport/BattTempCooldownScreen;->access$000(Lcom/android/batteryreport/BattTempCooldownScreen;Landroid/view/View;)V

    .line 54
    return-void
.end method

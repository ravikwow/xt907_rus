.class Lcom/android/settings/TetherSettings$BluetoothTetheringObserver;
.super Landroid/database/ContentObserver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTetheringObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/TetherSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/settings/TetherSettings$BluetoothTetheringObserver;->this$0:Lcom/android/settings/TetherSettings;

    .line 773
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 774
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 776
    const-string v0, "TetherSettings"

    const-string v1, "bluetooth tether pending changed - updateState()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/settings/TetherSettings$BluetoothTetheringObserver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    .line 778
    return-void
.end method

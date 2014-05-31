.class Lcom/android/settings/sdencryption/EncryptionPinService$1;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionPinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionPinService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionPinService;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionPinService;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinService$1;->this$0:Lcom/android/settings/sdencryption/EncryptionPinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinService$1;->this$0:Lcom/android/settings/sdencryption/EncryptionPinService;

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinService;->startEncryptionPinActivity()V
    invoke-static {v0}, Lcom/android/settings/sdencryption/EncryptionPinService;->access$000(Lcom/android/settings/sdencryption/EncryptionPinService;)V

    .line 53
    return-void
.end method

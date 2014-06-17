.class Lcom/android/mms/transaction/SimStateChangedReceiver$1;
.super Ljava/lang/Object;
.source "SimStateChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SimStateChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SimStateChangedReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SimStateChangedReceiver;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/mms/transaction/SimStateChangedReceiver$1;->this$0:Lcom/android/mms/transaction/SimStateChangedReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->retrieveAPNMccMnc()V

    .line 42
    return-void
.end method

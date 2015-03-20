.class Lcom/android/phone/MotoRinger$1;
.super Landroid/database/ContentObserver;
.source "MotoRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MotoRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MotoRinger;


# direct methods
.method constructor <init>(Lcom/android/phone/MotoRinger;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/MotoRinger$1;->this$0:Lcom/android/phone/MotoRinger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/MotoRinger$1;->this$0:Lcom/android/phone/MotoRinger;

    invoke-virtual {v0}, Lcom/android/phone/MotoRinger;->initOrShutdownTextToSpeechEngine()V

    .line 86
    return-void
.end method

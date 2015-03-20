.class Lcom/android/phone/MotoRinger$2;
.super Ljava/lang/Object;
.source "MotoRinger.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
.method constructor <init>(Lcom/android/phone/MotoRinger;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/MotoRinger$2;->this$0:Lcom/android/phone/MotoRinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string v0, "MotoRinger"

    const-string v1, "TTS engine initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "MotoRinger"

    const-string v1, "TTS engine initialize failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

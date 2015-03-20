.class Lcom/android/soundrecorder/SoundRecorder$4;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1110
    return-void
.end method

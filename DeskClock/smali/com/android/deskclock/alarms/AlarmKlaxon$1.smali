.class final Lcom/android/deskclock/alarms/AlarmKlaxon$1;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmKlaxon;->start(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmKlaxon$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 87
    const-string v0, "Error occurred while playing audio. Stopping AlarmKlaxon."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmKlaxon$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/alarms/AlarmKlaxon;->stop(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

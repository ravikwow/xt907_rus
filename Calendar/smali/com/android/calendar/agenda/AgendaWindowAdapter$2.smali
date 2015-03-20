.class Lcom/android/calendar/agenda/AgendaWindowAdapter$2;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 674
    return-void
.end method

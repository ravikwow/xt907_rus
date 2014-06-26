.class Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;
.super Ljava/lang/Object;
.source "AlarmTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeNode"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public isRepeating:Z

.field final synthetic this$0:Lcom/android/deskclock/AlarmTimelineView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmTimelineView;Ljava/util/Date;Z)V
    .locals 0
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "isRepeating"    # Z

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->date:Ljava/util/Date;

    .line 113
    iput-boolean p3, p0, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->isRepeating:Z

    .line 114
    return-void
.end method

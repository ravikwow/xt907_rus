.class Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;
.super Ljava/lang/Object;
.source "VoiceMailUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;->this$0:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;
    .param p2, "x1"    # Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;-><init>(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService$UpdateThread;->this$0:Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;

    # invokes: Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->updateVoiceMailNumber()V
    invoke-static {v0}, Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;->access$000(Lcom/motorola/contacts/voicemail/VoiceMailUpdateService;)V

    .line 46
    return-void
.end method

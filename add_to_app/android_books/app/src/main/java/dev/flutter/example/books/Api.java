// Autogenerated from Pigeon (v0.1.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package dev.flutter.example.books;

import java.util.HashMap;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;

/** Generated class from Pigeon. */
public class Api {

  /** Generated class from Pigeon that represents data sent in messages. */
  public static class Book {
    private String title;
    public String getTitle() { return title; }
    public void setTitle(String setterArg) { this.title = setterArg; }

    private String subtitle;
    public String getSubtitle() { return subtitle; }
    public void setSubtitle(String setterArg) { this.subtitle = setterArg; }

    private String author;
    public String getAuthor() { return author; }
    public void setAuthor(String setterArg) { this.author = setterArg; }

    private String description;
    public String getDescription() { return description; }
    public void setDescription(String setterArg) { this.description = setterArg; }

    private String publishDate;
    public String getPublishDate() { return publishDate; }
    public void setPublishDate(String setterArg) { this.publishDate = setterArg; }

    private Long pageCount;
    public Long getPageCount() { return pageCount; }
    public void setPageCount(Long setterArg) { this.pageCount = setterArg; }

    HashMap toMap() {
      HashMap<String, Object> toMapResult = new HashMap<String, Object>();
      toMapResult.put("title", title);
      toMapResult.put("subtitle", subtitle);
      toMapResult.put("author", author);
      toMapResult.put("description", description);
      toMapResult.put("publishDate", publishDate);
      toMapResult.put("pageCount", pageCount);
      return toMapResult;
    }
    static Book fromMap(HashMap map) {
      Book fromMapResult = new Book();
      fromMapResult.title = (String)map.get("title");
      fromMapResult.subtitle = (String)map.get("subtitle");
      fromMapResult.author = (String)map.get("author");
      fromMapResult.description = (String)map.get("description");
      fromMapResult.publishDate = (String)map.get("publishDate");
      fromMapResult.pageCount = (map.get("pageCount") instanceof Integer) ? (Integer)map.get("pageCount") : (Long)map.get("pageCount");
      return fromMapResult;
    }
  }

  /** Generated class from Pigeon that represents Flutter messages that can be called from Java.*/
  public static class FlutterBookApi {
    private BinaryMessenger binaryMessenger;
    public FlutterBookApi(BinaryMessenger argBinaryMessenger){
      this.binaryMessenger = argBinaryMessenger;
    }
    public interface Reply<T> {
      void reply(T reply);
    }
    public void displayBookDetails(Book argInput, Reply<Void> callback) {
      BasicMessageChannel<Object> channel =
          new BasicMessageChannel<Object>(binaryMessenger, "dev.flutter.pigeon.FlutterBookApi.displayBookDetails", new StandardMessageCodec());
      HashMap inputMap = argInput.toMap();
      channel.send(inputMap, new BasicMessageChannel.Reply<Object>() {
        public void reply(Object channelReply) {
          callback.reply(null);
        }
      });
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter.*/
  public interface HostBookApi {
    void cancel();
    void finishedEditingBook(Book arg);

    /** Sets up an instance of `HostBookApi` to handle messages through the `binaryMessenger` */
    public static void setup(BinaryMessenger binaryMessenger, HostBookApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<Object>(binaryMessenger, "dev.flutter.pigeon.HostBookApi.cancel", new StandardMessageCodec());
        if (api != null) {
          channel.setMessageHandler(new BasicMessageChannel.MessageHandler<Object>() {
            public void onMessage(Object message, BasicMessageChannel.Reply<Object> reply) {
              HashMap<String, HashMap> wrapped = new HashMap<String, HashMap>();
              try {
                api.cancel();
                wrapped.put("result", null);
              }
              catch (Exception exception) {
                wrapped.put("error", wrapError(exception));
              }
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<Object>(binaryMessenger, "dev.flutter.pigeon.HostBookApi.finishedEditingBook", new StandardMessageCodec());
        if (api != null) {
          channel.setMessageHandler(new BasicMessageChannel.MessageHandler<Object>() {
            public void onMessage(Object message, BasicMessageChannel.Reply<Object> reply) {
              Book input = Book.fromMap((HashMap)message);
              HashMap<String, HashMap> wrapped = new HashMap<String, HashMap>();
              try {
                api.finishedEditingBook(input);
                wrapped.put("result", null);
              }
              catch (Exception exception) {
                wrapped.put("error", wrapError(exception));
              }
              reply.reply(wrapped);
            }
          });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
  private static HashMap wrapError(Exception exception) {
    HashMap<String, Object> errorMap = new HashMap<String, Object>();
    errorMap.put("message", exception.toString());
    errorMap.put("code", null);
    errorMap.put("details", null);
    return errorMap;
  }
}
